.class Lcom/mopub/mraid/MraidNativeCommandHandler$1;
.super Ljava/lang/Object;
.source "MraidNativeCommandHandler.java"

# interfaces
.implements Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidNativeCommandHandler;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$failureListener:Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidNativeCommandHandler;Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$1;->this$0:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iput-object p2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$1;->val$failureListener:Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Image failed to download."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error downloading and saving image file."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$1;->val$failureListener:Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;

    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    invoke-direct {v1, v3}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;->onFailure(Lcom/mopub/mraid/MraidCommandException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 365
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Image successfully saved."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
