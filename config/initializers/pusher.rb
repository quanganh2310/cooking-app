require 'pusher'

# pusher = Pusher::Client.new(
#     app_id: '914360',
#     key: '2fdd4bc794d49256edb0',
#     secret: 'c72bac4a2f44e76d5af4',
#     cluster: 'ap1',
#     encrypted: true
# )

# pusher.trigger('my-channel', 'my-event', {
#   message: 'hello world'
# })


Pusher.app_id = '914360'
Pusher.key = '2fdd4bc794d49256edb0'
Pusher.secret = 'c72bac4a2f44e76d5af4'
Pusher.cluster = 'ap1'
Pusher.logger = Rails.logger
Pusher.encrypted = true