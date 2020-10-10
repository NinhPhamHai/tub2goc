.class public Lcom/mopub/nativeads/ViewBinder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field final callToActionId:I

.field final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final iconImageId:I

.field final layoutId:I

.field final mainImageId:I

.field final privacyInformationIconImageId:I

.field final textId:I

.field final titleId:I


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$100(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->layoutId:I

    .line 94
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$200(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    .line 95
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$300(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->textId:I

    .line 96
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$400(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    .line 97
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$500(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    .line 98
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$600(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    .line 99
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$700(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->privacyInformationIconImageId:I

    .line 100
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->access$800(Lcom/mopub/nativeads/ViewBinder$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;Lcom/mopub/nativeads/ViewBinder$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ViewBinder;-><init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V

    return-void
.end method
