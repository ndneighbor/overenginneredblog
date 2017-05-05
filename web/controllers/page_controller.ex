defmodule Overengineered.PageController do
  use Overengineered.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
