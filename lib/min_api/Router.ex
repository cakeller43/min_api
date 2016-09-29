defmodule MinApi.Router do
	use Plug.Router
	require Logger

	#Plug pipeline
	plug Plug.Logger
	plug :match			#pattern match to find route
	plug :dispatch	#send request to pattern matched route.

	#Routes
	get "/" do
		send_resp(conn, 200, "Ok!")
	end

	match _ do
		send_resp(conn, 404, "No match!")
	end
end