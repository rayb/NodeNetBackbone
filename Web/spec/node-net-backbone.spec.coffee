describe "Sample Test", ->
  it "should pass becuase it does nothing", ->
    expect("hello").toEqual("hello")
    
  it "should pass  becuase it does nothing", ->
    expect("goodbye").not.toEqual("hello")
  
  # Working with async tests the old way
  it "shows asynchronous test", ->
    setTimeout (->
      expect("second").toEqual "second"
      asyncSpecDone()
    ), 1
    expect("first").toEqual "first"
    asyncSpecWait()

  # Working with async tests the new way
  it "shows asynchronous test node-style", (done) ->
    setTimeout (->
      expect("second").toEqual "second"
      done()
    ), 1
    expect("first").toEqual "first"

