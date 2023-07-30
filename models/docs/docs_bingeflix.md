# Bingeflix Docs
This file contains docs blocks for Bingeflix sources

## Common Fields
This section contains documentation for fields common to multiple tables in the source.

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs bingeflix_subscription_plan_id %}
The unique identifier of the subscription plan.
{% enddocs %}

{% docs bingeflix_subscription_id %}
The unique identifier for the subscription.
{% enddocs %}

## Users
This section contains documentation from the Bingeflix Users table.

{% docs bingeflix_user_created_at %}
When the user was created.
{% enddocs %}

{% docs bingeflix_user_phone_number %}
The user's phone number.
{% enddocs %}

{% docs bingeflix_user_deleted_at %}
When the user's account was deleted. The value is NULL if the account has not been deleted.
{% enddocs %}

{% docs bingeflix_user_username %}
The username for login to Bingeflix.
{% enddocs %}

{% docs bingeflix_user_name %}
The name of the user.
{% enddocs %}

{% docs bingeflix_user_sex %}
The user's sex at birth.
{% enddocs %}

{% docs bingeflix_user_email %}
The user's email address.
{% enddocs %}

{% docs bingeflix_user_birthdate %}
The user's birthdate.
{% enddocs %}

{% docs bingeflix_user_region %}
Where the user resides (i.e. the state or province).
{% enddocs %}

{% docs bingeflix_user_country %}
Where the user resides (country).
{% enddocs %}

## Subscriptions
This section contains documntation from the Bingeflix Subscriptions table.

{% docs bingeflix_subscription_starts_at %}
When the subscription started.
{% enddocs %}

{% docs bingeflix_subscription_ends_at %}
When the subscription ends. This value is NULL if the subscription is active.
{% enddocs %}

## Subscription Plans
This section contains documentation from the Bingeflix Subscription Plans table.

{% docs bingeflix_subscription_plans_plan_name %}
The name of the subscription plan.
{% enddocs %}

{% docs bingeflix_subscription_plans_pricing %}
The price of the subscription.
{% enddocs %}

{% docs bingeflix_subscription_plans_payment_period %}
The recurring payment period for the subscription.
{% enddocs %}

## Events
This section contains documentation from the Bingeflix Events table.

{% docs bingeflix_events_session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}

{% docs bingeflix_events_created_at %}
When the event was logged.
{% enddocs %}

{% docs bingeflix_events_event_name %}
The name of the event.
{% enddocs %}

{% docs bingeflix_events_event_id %}
The unique identifier of the event.
{% enddocs %}

## fct_mrr
This section contains documentation for fct_mrr table.

{% docs fct_mrr_ends_at %}
When the subscription ended. This value is NULL if the subscription has not had auto-renew turned off.
{% enddocs %}

## Template for docs block in yml files '{{ doc("_field_") }}'