.class Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;
.super Ljava/lang/Object;
.source "VastVideoCloseButtonWidget.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 125
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to load image."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->access$000(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->val$imageUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const-string v1, "%s returned null bitmap"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
