.class final enum Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
.super Ljava/lang/Enum;
.source "NativeVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/NativeVideoViewController$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum BUFFERING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum ENDED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum FAILED_LOAD:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum LOADING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum NONE:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

.field public static final enum PLAYING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->NONE:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v2, 0x1

    const-string v3, "LOADING"

    invoke-direct {v0, v3, v2}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->LOADING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v3, 0x2

    const-string v4, "BUFFERING"

    invoke-direct {v0, v4, v3}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->BUFFERING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v5, 0x4

    const-string v6, "PLAYING"

    invoke-direct {v0, v6, v5}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PLAYING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v6, 0x5

    const-string v7, "ENDED"

    invoke-direct {v0, v7, v6}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->ENDED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v7, 0x6

    const-string v8, "FAILED_LOAD"

    invoke-direct {v0, v8, v7}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->FAILED_LOAD:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    sget-object v8, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->NONE:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->LOADING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->BUFFERING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PLAYING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->ENDED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->FAILED_LOAD:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->$VALUES:[Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
    .locals 1

    .line 40
    const-class v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
    .locals 1

    .line 40
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->$VALUES:[Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    return-object v0
.end method
