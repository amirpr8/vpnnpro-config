% include('head')

This page is only for configuration purpose. After one hour it will be disappeared.
<form action='change' method='get'>
    
    Your IP is {{data["external_ip"]}} Please set this ip in your domain and enter your domain bellow.<br>   
    <div class="form-group">
        <label>SubDomain</label>
        <input type='text'  value='{{data["MAIN_DOMAIN"]}}' class="form-control"  name='MAIN_DOMAIN' placeholder='plese enter your subdomain' /> 
        <small class="form-text text-muted"><a href='https://github.com/hiddify/hiddify-config/blob/main/docs/create_domain.md'> Help</a></small>
    </div>   
    <div class="form-group">
        <label>Secret</label>
        <input type='text'  value='{{data["USER_SECRET"]}}' class="form-control" name='USER_SECRET' placeholder='plese enter your user secret'" /> 
        <small class="form-text text-muted">User Secret will be used for your users</small>
    </div>   
    <div class="form-group">
        <label>Admin Secret</label>
        <input type='text' value='{{data["ADMIN_SECRET"]}}'  class="form-control" name='ADMIN_SECRET' placeholder='plese enter your admin secret'" /> 
        <small class="form-text text-muted">Admin Secret will be used for accessing admin panel</small>
    </div>   
    <div class="form-group">
        <label>Telegram Fake TLS Domain</label>
        <input type='text' value='{{data["TELEGRAM_FAKE_TLS_DOMAIN"]}}'  class="form-control" name='TELEGRAM_FAKE_TLS_DOMAIN' placeholder='plese enter your telegram fake tls domain'" /> 
        <small class="form-text text-muted">Please use a well known domain in your data center. For example, if you are in azure data center, microsoft.com is a good example</small>
    </div>   
    <div class="form-group">
        <label>Shadowsocks Fake TLS Domain</label>
        <input type='text' value='{{data["SS_FAKE_TLS_DOMAIN"]}}'  class="form-control" name='SS_FAKE_TLS_DOMAIN' placeholder='plese enter your shadowsocks fake tls domain'" /> 
        <small class="form-text text-muted">Please use a well known domain in your data center. For example, if you are in azure data center, microsoft-update.com is a good example</small>
        <small class="form-text text-muted">Shadowsocks fake tls and telegram fake tls should be different</small>
    </div>   

    <div class="form-group">
        <label>If you are using CDN, which CDN you are using</label>
        <select class="form-control" name="CDN_NAME">
        <option value="" {% if data["CDN_NAME"] == "" %} selected {% endif %}>No CDN</option>
        <option value="ar" {% if data["CDN_NAME"] == "ar" %} selected {% endif %}>ArvanCloud</option>
        <option value="cf" {% if data["CDN_NAME"] == "cf" %} selected {% endif %}>Cloudflare</option>
        </select>
        <small class="form-text text-muted">This will be used only for translating proxy ips for better report</small>
    </div>   

    <div class="form-check">
        <input type="checkbox" class="form-check-input" name="ENABLE_FIREWALL">
        <label class="form-check-label">Enable Firewall</label>
    </div>
    <div class="form-check">
        <input type="checkbox" class="form-check-input" name="ENABLE_AUTO_UPDATE">
        <label class="form-check-label">Enable Firewall</label>
    </div>

    <input type='submit' value='Submit' class="btn btn-primary">
    

</form>
        
% include('tail')