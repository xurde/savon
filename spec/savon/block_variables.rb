require 'spec_helper'
require 'support/savon_client_owner_object'

describe 'evaluating a block for an operation' do
  let (:subject) { SavonClientUser.new }

  it 'allows the user to invoke methods on the context within client#call' do
    Savon.stubs(:notify_observers)
    Savon::Operation.stubs(:ensure_exists!)
    Savon::Operation.any_instance.stubs(:create_response)

    subject.perform_request
    expect(subject.trigger).to eq('sprung')
  end
end
