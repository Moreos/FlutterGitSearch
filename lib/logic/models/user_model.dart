class User {
  final String? login;
  final int id;
  final String? node_id;
  final String? avatar_url;
  final String? gravatar_id;
  final String? url;
  final String? html_url;
  final String? followers_url;
  final String? following_url;
  final String? gists_url;
  final String? starred_url;
  final String? subscriptions_url;
  final String? organizations_url;
  final String? repos_url;
  final String? events_url;
  final String? received_events_url;
  final String? type;
  final bool? site_admin;
  final String? name;
  final String? company;
  final String? blog;
  final String? location;
  final String? email;
  final bool? hireable;
  final String? bio;
  final String? twitter_username;
  final String? public_repos;
  final String? public_gists;
  final String? followers;
  final String? following;
  final String? created_at;
  final String? updated_at;
  final String? private_gists;
  final String? total_private_repos;
  final String? owned_private_repos;
  final String? disk_usage;
  final String? collaborators;
  final bool? two_factor_authentication;
  final Map<String, dynamic>? plan;

  User(
      {required this.login,
      required this.id,
      required this.node_id,
      required this.avatar_url,
      required this.gravatar_id,
      required this.url,
      required this.html_url,
      required this.followers_url,
      required this.following_url,
      required this.gists_url,
      required this.starred_url,
      required this.subscriptions_url,
      required this.organizations_url,
      required this.repos_url,
      required this.events_url,
      required this.received_events_url,
      required this.type,
      required this.site_admin,
      required this.name,
      required this.company,
      required this.blog,
      required this.location,
      required this.email,
      required this.hireable,
      required this.bio,
      required this.twitter_username,
      required this.public_repos,
      required this.public_gists,
      required this.followers,
      required this.following,
      required this.created_at,
      required this.updated_at,
      required this.private_gists,
      required this.total_private_repos,
      required this.owned_private_repos,
      required this.disk_usage,
      required this.collaborators,
      required this.two_factor_authentication,
      required this.plan});

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
    'login' : login,
    'node_id' : node_id,
    'avatar_url' : avatar_url,
    'gravatar_id' : gravatar_id,
    'url' : url,
    'html_url' : html_url,
    'followers_url' : followers_url,
    'following_url' : following_url,
    'gists_url' : gists_url,
    'starred_url' : starred_url,
    'subscriptions_url' : subscriptions_url,
    'organizations_url' : organizations_url,
    'repos_url' : repos_url,
    'events_url' : events_url,
    'received_events_url' : received_events_url,
    'type' : type,
    'site_admin' : site_admin,
    'name' : name,
    'company' : company,
    'blog' : blog,
    'location' : location,
    'email' : email,
    'hireable' : hireable,
    'bio' : bio,
    'twitter_username' : twitter_username,
    'public_repos' : public_repos,
    'public_gists' : public_gists,
    'followers' : followers,
    'following' : following,
    'created_at' : created_at,
    'updated_at' : updated_at,
    'private_gists' : private_gists,
    'total_private_repos' : total_private_repos,
    'owned_private_repos' : owned_private_repos,
    'disk_usage' : disk_usage,
    'collaborators' : collaborators,
    'two_factor_authentication' : two_factor_authentication,
    'plan' : plan,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      login: json['login'] != null ? json['login'] as String : null,
      id: json['id'] as int,
      node_id: json['node_id'] != null ? json['node_id'] as String : null,
      avatar_url: json['avatar_url'] != null ? json['avatar_url'] as String : null,
      gravatar_id: json['gravatar_id'] != null ? json['gravatar_id'] as String : null,
      url: json['url'] != null ? json['url'] as String : null,
      html_url: json['html_url'] != null ? json['html_url'] as String : null,
      followers_url: json['followers_url'] != null ? json['followers_url'] as String : null,
      following_url: json['following_url'] != null ? json['following_url'] as String : null,
      gists_url: json['gists_url'] != null ? json['gists_url'] as String : null,
      starred_url: json['starred_url'] != null ? json['starred_url'] as String : null,
      subscriptions_url: json['subscriptions_url'] != null ? json['subscriptions_url'] as String : null,
      organizations_url: json['organizations_url'] != null ? json['organizations_url'] as String : null,
      repos_url: json['repos_url'] != null ? json['repos_url'] as String : null,
      events_url: json['events_url'] != null ? json['events_url'] as String : null,
      received_events_url: json['received_events_url'] != null ? json['received_events_url'] as String : null,
      type: json['type'] != null ? json['type'] as String : null,
      site_admin: json['site_admin'] != null ? json['site_admin'] as bool : null,
      name: json['name'] != null ? json['name'] as String : null,
      company: json['company'] != null ? json['company'] as String : null,
      blog: json['blog'] != null ? json['blog'] as String : null,
      location: json['location'] != null ? json['location'] as String : null,
      email: json['email'] != null ? json['email'] as String : null,
      hireable: json['hireable'] != null ? json['hireable'] as bool : null,
      bio: json['bio'] != null ? json['bio'] as String : null,
      twitter_username: json['twitter_username'] != null ? json['twitter_username'] as String : null,
      public_repos: json['public_repos'] != null ? json['public_repos'] as String : null,
      public_gists: json['public_gists'] != null ? json['public_gists'] as String : null,
      followers: json['followers'] != null ? json['followers'] as String : null,
      following: json['following'] != null ? json['following'] as String : null,
      created_at: json['created_at'] != null ? json['created_at'] as String : null,
      updated_at: json['updated_at'] != null ? json['updated_at'] as String : null,
      private_gists: json['private_gists'] != null ? json['private_gists'] as String : null,
      total_private_repos: json['total_private_repos'] != null ? json['total_private_repos'] as String : null,
      owned_private_repos: json['owned_private_repos'] != null ? json['owned_private_repos'] as String : null,
      disk_usage: json['disk_usage'] != null ? json['disk_usage'] as String : null,
      collaborators: json['collaborators'] != null ? json['collaborators'] as String : null,
      two_factor_authentication: json['two_factor_authentication'] != null ? json['two_factor_authentication'] as bool : null,
      plan: json['plan'] != null ? json['plan'] as Map<String, dynamic> : null,
    );
  }
}
