require "flying_saucer/itext-paulo-155"
import org.xhtmlrenderer.pdf.ITextRenderer

class ITextRenderer
  def make_pdf(input, file)
    self.document = "file:#{File.expand_path(input)}"
    self.layout
    self.create_pdf(IOOutputStream.new(file))
  end
end