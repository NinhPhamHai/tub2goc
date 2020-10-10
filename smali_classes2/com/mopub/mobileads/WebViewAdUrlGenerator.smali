.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "WebViewAdUrlGenerator.java"


# instance fields
.field private final mIsStorePictureSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean p2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/ad"

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 27
    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->addBaseParams(Lcom/mopub/common/ClientMetadata;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->setMraidFlag(Z)V

    .line 34
    iget-boolean p1, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->setExternalStoragePermission(Z)V

    .line 36
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->getEnabledVendorKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->enableViewability(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
