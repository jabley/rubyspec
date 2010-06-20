require File.expand_path('../../../../spec_helper', __FILE__)
require File.expand_path('../../fixtures/classes', __FILE__)

describe "UDPSocket.recvfrom" do

  it "refuses the connection when there is no server to read from" do
    lambda {
      udp = UDPSocket.open
      udp.connect '127.0.0.1', SocketSpecs.port
      array = udp.recvfrom 64
    }.should raise_error(Errno::ECONNREFUSED)
  end 

end
