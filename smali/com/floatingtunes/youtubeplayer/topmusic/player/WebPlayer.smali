.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;
.super Ljava/lang/Object;
.source "WebPlayer.java"


# instance fields
.field private player:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    .line 28
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->initPlayer()V

    return-void
.end method


# virtual methods
.method public getPlayer()Landroid/webkit/WebView;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    return-object v0
.end method

.method public initPlayer()V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 35
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 38
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 39
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:21.0.0) Gecko/20121011 Firefox/21.0.0"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScriptInterface;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScriptInterface;-><init>()V

    const-string v2, "javascriptInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ConstantStrings;->getVideoHTML()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v3, "https://www.youtube.com/player_api"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadJS(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->player:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method
