.class Lcom/mopub/nativeads/StaticNativeViewHolder;
.super Ljava/lang/Object;
.source "StaticNativeViewHolder.java"


# static fields
.field static final EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/StaticNativeViewHolder;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field callToActionView:Landroid/widget/TextView;

.field iconImageView:Landroid/widget/ImageView;

.field mainImageView:Landroid/widget/ImageView;

.field mainView:Landroid/view/View;

.field privacyInformationIconImageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/mopub/nativeads/StaticNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/StaticNativeViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/StaticNativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/StaticNativeViewHolder;
    .locals 3

    .line 36
    new-instance v0, Lcom/mopub/nativeads/StaticNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/StaticNativeViewHolder;-><init>()V

    .line 37
    iput-object p0, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->mainView:Landroid/view/View;

    .line 39
    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->titleView:Landroid/widget/TextView;

    .line 40
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->textId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->textView:Landroid/widget/TextView;

    .line 41
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 43
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    .line 45
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 47
    iget p1, p1, Lcom/mopub/nativeads/ViewBinder;->privacyInformationIconImageId:I

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/mopub/nativeads/StaticNativeViewHolder;->privacyInformationIconImageView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 51
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 52
    sget-object p0, Lcom/mopub/nativeads/StaticNativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/StaticNativeViewHolder;

    return-object p0
.end method
