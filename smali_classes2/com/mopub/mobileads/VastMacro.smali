.class final enum Lcom/mopub/mobileads/VastMacro;
.super Ljava/lang/Enum;
.source "VastMacro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastMacro;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastMacro;

.field public static final enum ASSETURI:Lcom/mopub/mobileads/VastMacro;

.field public static final enum CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

.field public static final enum CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

.field public static final enum ERRORCODE:Lcom/mopub/mobileads/VastMacro;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const/4 v1, 0x0

    const-string v2, "ERRORCODE"

    invoke-direct {v0, v2, v1}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->ERRORCODE:Lcom/mopub/mobileads/VastMacro;

    .line 22
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const/4 v2, 0x1

    const-string v3, "CONTENTPLAYHEAD"

    invoke-direct {v0, v3, v2}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

    .line 27
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const/4 v3, 0x2

    const-string v4, "CACHEBUSTING"

    invoke-direct {v0, v4, v3}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

    .line 32
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const/4 v4, 0x3

    const-string v5, "ASSETURI"

    invoke-direct {v0, v5, v4}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->ASSETURI:Lcom/mopub/mobileads/VastMacro;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/mopub/mobileads/VastMacro;

    sget-object v5, Lcom/mopub/mobileads/VastMacro;->ERRORCODE:Lcom/mopub/mobileads/VastMacro;

    aput-object v5, v0, v1

    sget-object v1, Lcom/mopub/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/VastMacro;->CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/VastMacro;->ASSETURI:Lcom/mopub/mobileads/VastMacro;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->$VALUES:[Lcom/mopub/mobileads/VastMacro;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacro;
    .locals 1

    .line 11
    const-class v0, Lcom/mopub/mobileads/VastMacro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastMacro;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastMacro;
    .locals 1

    .line 11
    sget-object v0, Lcom/mopub/mobileads/VastMacro;->$VALUES:[Lcom/mopub/mobileads/VastMacro;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastMacro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastMacro;

    return-object v0
.end method
