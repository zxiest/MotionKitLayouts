class HomeScreen < PM::Screen
  def on_load
    @layout = HomeLayout.new(root: self.view)
    @layout.build

    rmq.stylesheet = HomeStylesheet

    @view = @layout.view
    rmq(@view).append(UILabel, :rmq_label1)
    rmq(@view).append(UILabel, :rmq_label2)
  end
end
