.class final enum Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
.super Ljava/lang/Enum;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdAlertGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ZigZagState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field public static final enum FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field public static final enum FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field public static final enum UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v1, 0x0

    const-string v2, "UNSET"

    invoke-direct {v0, v2, v1}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v2, 0x1

    const-string v3, "GOING_RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v3, 0x2

    const-string v4, "GOING_LEFT"

    invoke-direct {v0, v4, v3}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v4, 0x3

    const-string v5, "FINISHED"

    invoke-direct {v0, v5, v4}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v5, 0x4

    const-string v6, "FAILED"

    invoke-direct {v0, v6, v5}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    sget-object v6, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->$VALUES:[Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
    .locals 1

    .line 26
    const-class v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
    .locals 1

    .line 26
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->$VALUES:[Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-object v0
.end method
