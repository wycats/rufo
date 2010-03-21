require "java"
require "flying_saucer/core-renderer"
require "flying_saucer/iText-2.0.8"
require "stringio"

java.lang.System.set_property("java.awt.headless", "true")

class FlyingSaucer
  Renderer = org.xhtmlrenderer.pdf.ITextRenderer

  def self.make_pdf(input, options = {})
    new(input, options).tap do |saucer|
      saucer.make_pdf
    end
  end

  def initialize(input, options = {})
    root, output = options.values_at(:root, :output)

    root   ||= ""
    output ||= StringIO.new

    @renderer     = Renderer.new
    @root         = File.expand_path(root)
    self.output   = output
    self.input    = input
  end

  def input=(input)
    if input.is_a?(String)
      factory = javax.xml.parsers.DocumentBuilderFactory
      builder = factory.new_instance.new_document_builder
      doc     = builder.parse(StringIO.new(input).to_inputstream)

      @renderer.set_document(doc, "file:#{@root}/")
    else
      @renderer.set_document("file:#{File.expand_path(input.path)}")
    end
  end

  def output=(output)
    @output = output
    @outputstream = output.to_outputstream
  end

  def make_pdf
    @renderer.layout
    @renderer.create_pdf(@outputstream)
  end
end