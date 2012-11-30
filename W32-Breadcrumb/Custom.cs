using System;
using System.Windows.Shapes;
using System.Windows;
using System.Windows.Media;

namespace CustomShapes
{
    public class SquaredArrow : Shape
    {


        protected Rect _rect = Rect.Empty;


        #region TipOffset

        /// <summary>
        /// TipOffset Dependency Property
        /// </summary>
        public static readonly DependencyProperty TipOffsetProperty =
            DependencyProperty.Register("TipOffset", typeof(double), typeof(SquaredArrow),
                new FrameworkPropertyMetadata((double)10, FrameworkPropertyMetadataOptions.AffectsRender));

        /// <summary>
        /// Gets or sets the TipOffset property.  This dependency property 
        /// indicates ....
        /// </summary>
        [System.ComponentModel.Category("SquaredArrow")]
        public double TipOffset
        {
            get { return (double)GetValue(TipOffsetProperty); }
            set { SetValue(TipOffsetProperty, value); }
        }

        #endregion


        public SquaredArrow()
        {
            Rectangle r = new Rectangle();
            r.Measure(new Size(100, 100));
            r.Arrange(new Rect(0, 0, 100, 100));
        }

        static SquaredArrow()
        {
            StretchProperty.OverrideMetadata(typeof(SquaredArrow), new FrameworkPropertyMetadata(Stretch.Fill));

        }

        protected override Geometry DefiningGeometry
        {
            get { return CreateShape(); }
        }

        /// <summary>
        /// Return the transformation applied to the geometry before rendering
        /// </summary> 
        public override Transform GeometryTransform
        {
            get
            {
                return Transform.Identity;
            }
        }



        /// <summary>
        /// This is where the arrow shape is created.
        /// </summary>
        /// <returns></returns>
        private Geometry CreateShape()
        {
            double width = _rect.Width;
            double height = _rect.Height;

            double borderOffset = GetStrokeThickness() / 2d;


            PathGeometry g = new PathGeometry();

            PathFigure figure = new PathFigure();
            figure.IsClosed = true;
            figure.StartPoint = new Point(borderOffset, borderOffset);

            figure.Segments.Add(new LineSegment(new Point(width - TipOffset + borderOffset, borderOffset), true));
            figure.Segments.Add(new LineSegment(new Point(width + borderOffset, height / 2d + borderOffset), true));
            figure.Segments.Add(new LineSegment(new Point(width + borderOffset - TipOffset, height + borderOffset), true));
            figure.Segments.Add(new LineSegment(new Point(borderOffset, height + borderOffset), true));


            g.Figures.Add(figure);


            return g;


        }



        /// <summary>
        /// Updates DesiredSize of the Rectangle.  Called by parent UIElement.  This is the first pass of layout. 
        /// </summary>
        /// <param name="constraint">Constraint size is an "upper limit" that Rectangle should not exceed.</param>
        /// <returns>Rectangle's desired size.</returns>
        protected override Size MeasureOverride(Size constraint)
        {
            if (Stretch == Stretch.UniformToFill)
            {
                double width = constraint.Width;
                double height = constraint.Height;

                if (Double.IsInfinity(width) && Double.IsInfinity(height))
                {
                    return GetNaturalSize();
                }
                else if (Double.IsInfinity(width) || Double.IsInfinity(height))
                {
                    width = Math.Min(width, height);
                }
                else
                {
                    width = Math.Max(width, height);
                }

                return new Size(width, width);
            }

            return GetNaturalSize();
        }


        /// <summary>
        /// Returns the final size of the shape and cachnes the bounds. 
        /// </summary>
        protected override Size ArrangeOverride(Size finalSize)
        {
            // Since we do NOT want the RadiusX and RadiusY to change with the rendering transformation, we
            // construct the rectangle to fit finalSize with the appropriate Stretch mode.  The rendering 
            // transformation will thus be the identity.

            double penThickness = GetStrokeThickness();
            double margin = penThickness / 2;

            _rect = new Rect(
                margin, // X 
                margin, // Y
                Math.Max(0, finalSize.Width - penThickness),    // Width 
                Math.Max(0, finalSize.Height - penThickness));  // Height

            switch (Stretch)
            {
                case Stretch.None:
                    // A 0 Rect.Width and Rect.Height rectangle 
                    _rect.Width = _rect.Height = 0;
                    break;

                case Stretch.Fill:
                    // The most common case: a rectangle that fills the box.
                    // _rect has already been initialized for that.
                    break;

                case Stretch.Uniform:
                    // The maximal square that fits in the final box 
                    if (_rect.Width > _rect.Height)
                    {
                        _rect.Width = _rect.Height;
                    }
                    else  // _rect.Width <= _rect.Height
                    {
                        _rect.Height = _rect.Width;
                    }
                    break;

                case Stretch.UniformToFill:

                    // The minimal square that fills the final box
                    if (_rect.Width < _rect.Height)
                    {
                        _rect.Width = _rect.Height;
                    }
                    else  // _rect.Width >= _rect.Height 
                    {
                        _rect.Height = _rect.Width;
                    }
                    break;
            }


            return finalSize;
        }

        /// <summary> 
        /// Get the natural size of the geometry that defines this shape
        /// </summary> 
        protected Size GetNaturalSize()
        {
            double strokeThickness = GetStrokeThickness();
            return new Size(strokeThickness, strokeThickness);
        }

        protected double GetStrokeThickness()
        {
            return this.StrokeThickness;

        }


        /// <summary> 
        /// Render callback.
        /// </summary> 
        protected override void OnRender(DrawingContext drawingContext)
        {
            Pen pen = new Pen(Stroke, GetStrokeThickness());


            drawingContext.DrawGeometry(Fill, pen, DefiningGeometry);
        }

    }
}
