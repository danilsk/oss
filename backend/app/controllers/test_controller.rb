# frozen_string_literal: true

class TestController < ApplicationController
  def index
    render status: :ok, json: %w[foo bar baz qux]
  end

  def serve_frontend
    send_file 'public/index.html', type: 'text/html; charset=utf-8', disposition: 'inline', status: 200
  end
end
