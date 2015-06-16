module.exports.$$name = 'caffeinator'

myConfigs = {} # multiple objective roots could be calling inject, 
               # only inject for roots that create()d this plugin.


module.exports.create = (root, config, callback) ->
    
    # console.log root
    # console.log config

    myConfigs[root.config.uuid] = config
    callback null, the: 'plugin'


have = undefined

objective.pipeline.on 'objective.injecting', (payload, next) ->

    # console.log 'Injecting arg', payload.thisName

    config = myConfigs[payload.root.config.uuid]

    return next() unless config?

    payload.thisValue = switch payload.thisName

        when 'every' then (time) -> setInterval (->have()), time

        when 'two' then (time) -> time *= 2

        when 'five' then (time) -> time *= 5

        when 'seconds', 'second' then 1000

        when 'have' then (arg) -> have = -> console.log 'Have a ' + arg

        when 'some' then (arg) -> 'cup of ' + arg

        when 'coffee' then -> config.coffeeType

    next()
