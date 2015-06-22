# webhook_worker
An IronWorker that hits some URL's. Can be scheduled for regular hits. 

## Testing and Using

1. Clone this repo.
1. Change the URL's in `webhooker.rb`
1. Run it locally with: `docker run --rm -v "$(pwd)":/worker -w /worker iron/images:ruby-2.1 sh -c 'ruby webhooker.rb'`
1. Upload it `zip -r webhooker.zip . && iron worker upload --name webhooker --zip webhooker.zip iron/images:ruby-2.1 ruby webhooker.rb`
1. Test it on IronWorker: `iron worker queue --wait webhooker`

See README at https://github.com/iron-io/dockerworker/tree/master/ruby for detailed info.
