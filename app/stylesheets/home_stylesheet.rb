class HomeStylesheet < RubyMotionQuery::Stylesheet
  def rmq_label1(st)
    st.text = "RMQ 1"
    st.color = color.blue
    st.font = font.system(52)
    st.size_to_fit
    st.frame = { l: 10, t: 250 }
  end

  def rmq_label2(st)
    st.text = "RMQ 2"
    st.color = color.red
    st.font = font.system(20)
    st.size_to_fit
    st.frame = { r: rmq(:rmq_label1).frame.right, t: rmq(:rmq_label1).frame.bottom }
  end
end
