# webhook_worker

An IronWorker that hits some URL's. Can be scheduled for regular hits. 

## Testing and Using

**NOTE:** You must have the Iron CLI tool setup and ready, see here for more info: 
https://github.com/iron-io/dockerworker

1. Clone this repo.
1. Change the URL's in `webhooker.rb`
1. Run it locally with: `docker run --rm -v "$(pwd)":/worker -w /worker iron/images:ruby-2.1 ruby webhooker.rb`
1. Upload it `zip -r webhooker.zip . && iron worker upload --name webhooker --zip webhooker.zip iron/images:ruby-2.1 ruby webhooker.rb`
1. Test it on IronWorker: `iron worker queue --wait webhooker`. 
1. Then schedule it: `iron worker schedule --start-at 2015-06-24T08:00:00Z --run-every 86400 webhooker`. That command will
run the schedule every 24 hours starting at the --start-at time. 

That's it!
