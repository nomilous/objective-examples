objective 'Sustain a furious rate', 
    
    (e, every, two, second, seconds, have, some, coffee) ->

        if e?

            console.log '\nFAILED:', e.toString()
            process.exit e.errno || 1




        # have some coffee every second

        have some coffee every two seconds

#
# Output
# ------
# objective --root coffee/objective
#
# caffeinator> Have a cup of Premium Gourmet-Blue Ultra Alternate Select
# Have a cup of Premium Gourmet-Blue Ultra Alternate Select
# Have a cup of Premium Gourmet-Blue Ultra Alternate Select
# 
# (^C again to quit)
# 

#
# Equivalent javascript
# ---------------------
# 
# objective('Sustain a furious rate', 
#   function(e, every, two, second, seconds, have, some, coffee) {
#     if (e) {
#       console.log('\nFAILED:', e.toString());
#       process.exit(e.errno || 1);
#     }
# 
#     have(some(coffee(every(two(seconds)))));
# 
#   }
# );
# 
#
