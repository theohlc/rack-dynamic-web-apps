class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..10)
    num_2 = Kernel.rand(1..10)
    num_3 = Kernel.rand(1..10)

    if num_1==num_2 && num_2==num_3
      resp.write "#{num_1}, #{num_2}, #{num_3} You Win"
    else
      resp.write "#{num_1}, #{num_2}, #{num_3} You Lose"
    end

    resp.finish
  end

end 