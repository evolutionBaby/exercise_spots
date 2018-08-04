# ParkingLot

## Development Setup
1. Install [asdf version manager](https://github.com/asdf-vm/asdf)
2. Run `asdf install` to install correct version of elixir and erlang/otp
3. Install postgres
4. Add `127.0.0.1   postgres` to `/etc/hosts`
5. Run `mix ecto.create` to create database
6. Run `cd apps/parking_lot && mix ecto.migrate` to run migrations
7. Run `mix run priv/repo/seeds.exs`
8. Go back to project root directory `cd ../../..`
9. Install yarn by running `npm install -g yarn`
10. Install assets:
  * `cd apps/parking_lot_web/assets && yarn install && cd ../../..`
11. Run `iex -S mix phx.server` to start local server


## Project Description

Simple Parking Lot App builded on Phoenix and Vue.js frameworks.
