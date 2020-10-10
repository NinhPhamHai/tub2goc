.class public final enum Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;
.super Ljava/lang/Enum;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

.field public static final enum DISMISS:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

.field public static final enum DISPLAY:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    const/4 v1, 0x0

    const-string v2, "DISPLAY"

    invoke-direct {v0, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISPLAY:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    const/4 v2, 0x1

    const-string v3, "DISMISS"

    invoke-direct {v0, v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISMISS:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISPLAY:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    aput-object v3, v0, v1

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISMISS:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    return-object p0
.end method

.method public static values()[Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    invoke-virtual {v0}, [Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    return-object v0
.end method
