# Buffer structure.
#
class Tidybuf

  extend DL::Importable

  # Access TidyBuffer instance.
  #
  attr_reader(:struct)

  def initialize
    @struct = self.class.struct(construct_tidy_buffer).malloc
    Tidylib.buf_init(@struct)
  end

  # Free current contents and zero out.
  #
  def free
    Tidylib.buf_free(@struct)
  end

  # Convert to array.
  #
  def to_a
    to_s.split($/)
  end

  # Convert to string.
  #
  def to_s
    @struct.bp ? @struct.bp.to_s(@struct.size) : ''
  end

protected

  def construct_tidy_buffer
    struct_rows = [
      "TidyAllocator* allocator",
      "byte* bp",
      "uint size",
      "uint allocated",
      "uint next"
    ]
    if Tidy.fresh_tidy_version
      struct_rows.unshift "int* allocator"
    end
    struct_rows
  end

end
