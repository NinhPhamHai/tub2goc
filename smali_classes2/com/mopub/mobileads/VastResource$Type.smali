.class final enum Lcom/mopub/mobileads/VastResource$Type;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastResource$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const/4 v1, 0x0

    const-string v2, "STATIC_RESOURCE"

    invoke-direct {v0, v2, v1}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 32
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const/4 v2, 0x1

    const-string v3, "HTML_RESOURCE"

    invoke-direct {v0, v3, v2}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 33
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const/4 v3, 0x2

    const-string v4, "IFRAME_RESOURCE"

    invoke-direct {v0, v4, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/mopub/mobileads/VastResource$Type;

    sget-object v4, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->$VALUES:[Lcom/mopub/mobileads/VastResource$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastResource$Type;
    .locals 1

    .line 30
    const-class v0, Lcom/mopub/mobileads/VastResource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastResource$Type;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastResource$Type;
    .locals 1

    .line 30
    sget-object v0, Lcom/mopub/mobileads/VastResource$Type;->$VALUES:[Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastResource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastResource$Type;

    return-object v0
.end method
