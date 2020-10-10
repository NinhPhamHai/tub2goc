.class final enum Lcom/mopub/mobileads/VastTracker$MessageType;
.super Ljava/lang/Enum;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastTracker$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastTracker$MessageType;

.field public static final enum QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

.field public static final enum TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/mopub/mobileads/VastTracker$MessageType;

    const/4 v1, 0x0

    const-string v2, "TRACKING_URL"

    invoke-direct {v0, v2, v1}, Lcom/mopub/mobileads/VastTracker$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    new-instance v0, Lcom/mopub/mobileads/VastTracker$MessageType;

    const/4 v2, 0x1

    const-string v3, "QUARTILE_EVENT"

    invoke-direct {v0, v3, v2}, Lcom/mopub/mobileads/VastTracker$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v3, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->$VALUES:[Lcom/mopub/mobileads/VastTracker$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastTracker$MessageType;
    .locals 1

    .line 25
    const-class v0, Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastTracker$MessageType;
    .locals 1

    .line 25
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->$VALUES:[Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastTracker$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method
