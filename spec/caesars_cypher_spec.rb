require_relative "../lib/caesars_cypher"

describe CaesarsCypher do
  before do
    @encrypt_hello = CaesarsCypher.encrypt("Hello")
    @decrypt_uryyb = CaesarsCypher.decrypt("uryyb")
    
    @encrypt_thisisastring = CaesarsCypher.encrypt("This is a string")
    @decrypt_thisisastring = CaesarsCypher.decrypt("guvfvfnfgevat")
  end
 
  it "should get message and encrypt it to Caesar's Cypher" do
    expect(@encrypt_hello).to eql("uryyb")
  end

  it "should decrypt the message" do
    expect(@decrypt_uryyb).to eql("hello")
  end

  it "should encrypt 'This is a string'" do
    expect(@encrypt_thisisastring).to eql("guvfvfnfgevat")
  end

  it "should decrypt 'guvfvfnfgevat' to thisisastring" do
    expect(@decrypt_thisisastring).to eql('thisisastring')
  end

end

