###
Test: mydependencies
###


###
# requires.
###

fs           = require('fs')
Dependencies = require('../../dist/package/lib/mydependencies')


###
# Test variables.
###

dependencies = null

###
# Instantiating.
###

dependencies = new Dependencies()


###
# Specs.
###

describe('Dependencies', () ->
	options = {}
	
	beforeEach( () ->
		
		return
	)

	describe('Output', () ->

		it('dependencies.output should not be empty.', () ->
			dependencies.output.should.not.be.empty
		)

		it('dependencies.counter should not be zero.', () ->
			dependencies.counter.should.not.be.equal(0)
		)

		it('dependencies.ArrayDependencies should not be equal to zero.', () ->
			dependencies.ArrayDependencies.length.should.not.be.equal(0)
		)
		
		it('dependencies.packageJson type should be equal to "object".', () ->
			type = typeof dependencies.packageJson
			type.should.be.equal("object")
		)

		return
	)


	describe('Other Scenarios', () ->

		it('dependencies.pushMyDependencies should be false.', () ->
			dependencies.pushMyDependencies({}).should.be.equal(false)
		)

		it('dependencies.readFile should be false.', () ->
			dependencies.readFile("package2.json").should.be.equal(false)
		)

		return
	)
	


	return

)
