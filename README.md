# AMessage

"A message" is an Elixir struct w/ four required keys:

* to
* from
* subject
* body

## Um... isn't this kind of useless?

Probably :)

Some of us developers have trouble crafting messages with meaningful semantics, especially when the message is doing something mundane & generic.

    # what is the some_pid?
    # why is it being updated?
    # what's in some_data?
    # I don't understand.  At all.
    send(some_pid, {:update, some_data})

By using `AMessage`, maybe it'll be easier for you to capture some of the essence of what you're trying to accomplish, giving someone else (maybe you at a later time) enough context to come up with a more meaningful semantic at a later date.

    # OK, I see this module is sending updated endpoints to SomeModule
    # What the heck is this AMessage ridiculousness?
    # A more meaningful abstraction might be... <conversation happens>
    # Try this => send(endpoints_repo, {:update, endpoints})
    # Even better => EndpointsRepo.update(repo_pid, endpoints)
    send(some_pid, %AMessage{from:    __MODULE__,
                             to:      EndpointsRepo,
                             subject: :update_endpoints},
                             body:    endpoints})

## Add it (to mix.exs)

    ```elixir
    def deps do
      [{:a_message, "~> 1.0.0"}]
    end
    ```
