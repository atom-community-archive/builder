Builder = require '../lib/builder'

describe "Builder", ->
  [builderMain] = []

  beforeEach ->
    waitsForPromise -> atom.packages.activatePackage('builder').then((pack) -> builderMain = pack.mainModule)

  describe "when the builder package is activated", ->
    it "activates successfully", ->
      expect(builderMain).toBeDefined()
