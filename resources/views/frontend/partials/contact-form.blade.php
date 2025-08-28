<div class="contact-form-area">
    <h5 class="contact-form-title font-24 font-semi-bold">{{ __(get_option('send_us_msg_title')) }}</h5>
    <form id="contact-form">
        <div class="row">
            <div class="col-md-6 mb-30">
                <input type="text" class="form-control" id="inputName" placeholder="{{ __('Your name *') }}">
            </div>
            <div class="col-md-6 mb-30">
                <input type="email" class="form-control" id="inputEmail" placeholder="{{ __('Your Email *') }}">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mb-30">
                <select id="inputState" class="form-select contact_us_issue_id">
                    <option value="">{{__('Select an Issue')}}</option>
                    @foreach($contactUsIssues as $issue)
                    <option value="{{ $issue->id }}">{{ __($issue->name) }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mb-30">
                <textarea class="form-control message" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
        </div>
        <div class="col-12">
            <button type="button" class="theme-btn theme-button1 theme-button3 w-100 font-15 fw-bold submitContactUs">
                {{__('Submit')}}
            </button>
        </div>
    </form>
</div>