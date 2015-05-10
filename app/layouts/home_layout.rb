class HomeLayout < MK::Layout
  def layout
    root :home do
      background_color UIColor.whiteColor

      add UIView, :blue_rect do
        background_color UIColor.blueColor

        constraints do
          left.equals(:superview).plus(10)
          width.equals(200)
          top.equals(:superview).plus(100)
          height.equals(40)
        end
      end

      add UIView, :green_square do
        background_color UIColor.greenColor

        constraints do
          left.equals(:superview, :right).minus(50)
          width.equals(40)
          top.equals(:superview).plus(100)
          height.equals(40)
        end
      end

      add UILabel, :black_label do
        text "Black label 1"
        font UIFont.boldSystemFontOfSize 37
        size_to_fit

        constraints do
          left.equals(100)
          top.equals(:green_square, :bottom)
        end
      end

      add UILabel, :blue_label do
        text "Blue label 2"
        font UIFont.boldSystemFontOfSize 27
        size_to_fit

        constraints do
          right.equals(:black_label)
          top.equals(:black_label, :bottom)
        end
      end

      add UIView, :red_rectangle do
        background_color UIColor.redColor

        constraints do
          left.equals(10)
          width.equals(40)
          top.equals(:superview, :bottom).minus(50)
          height.equals(40)
        end
      end

      add UIView, :black_rectangle do
        background_color UIColor.blackColor

        constraints do
          right.equals(-10)
          width.equals(40)
          top.equals(:superview, :bottom).minus(50)
          height.equals(40)
        end
      end
    end
  end
end
