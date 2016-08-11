defmodule AMessage do
  @enforce_keys [:body, :from, :subject, :to]

  defstruct @enforce_keys

  def new(args)

  def new(%{to: to, from: from, subject: subject, body: body}=_args) do
    %__MODULE__{to: to, from: from, subject: subject, body: body}
  end

  def new(invalid) do
    raise "AMessage#new invalid arg => #{inspect invalid}"
  end
end
