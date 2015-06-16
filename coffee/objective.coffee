objective 'Sustain a furious rate', 
    
    (e, every, two, second, seconds, have, some, coffee) ->

        if e?

            console.log '\nFAILED:', e.toString()
            process.exit e.code || 1




        # have some coffee every second

        have some coffee every two seconds



#
# Equivalent javascript
# ---------------------
# 
# objective('Sustain a furious rate', 
#   function(e, every, two, second, seconds, have, some, coffee) {
#     if (e) {
#       console.log('\nFAILED:', e.toString());
#       process.exit(e.code || 1);
#     }
# 
#     have(some(coffee(every(two(seconds)))));
# 
#   }
# );
# 
#
