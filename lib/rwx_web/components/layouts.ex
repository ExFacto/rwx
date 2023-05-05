defmodule RwxWeb.Layouts do
  use RwxWeb, :html

  alias RwxWeb.Components.Partials

  embed_templates "layouts/*"
end
