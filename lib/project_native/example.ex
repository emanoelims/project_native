defmodule ProjectNative.Example do
  def render(assigns, %{"target" => "ios"}) do
    assigns
    |> image(src: ~p"images/avatars/muier_game_change")
    |> column()
  end

  def render(assigns, %{"target" => "ios"}) do
    avatar =
      assigns
      |> image(src: ~p"images/avatars/muier_game_change")
      |> container(radius: radius(topStart: 30, topEnd: 30))

    body =
      assigns
      |> text(assigns.author)
      |> text(assigns.body)
      |> column()

    row(combine(avatar, body))
  end

  def render(assigns, %{}) do
    avatar =
      assigns
      |> img(src: ~p"images/avatars/muier_game_change")
      |> div(radius: radius(topStart: 30, topEnd: 30))

    body =
      assigns
      |> h1(assigns.author)
      |> p(assigns.body)
      |> ul(class: "radius")

    row(combine(avatar, body))
  end
end
