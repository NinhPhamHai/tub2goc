.class final enum Lcom/mopub/common/util/Timer$State;
.super Ljava/lang/Enum;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/Timer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/Timer$State;

.field public static final enum STARTED:Lcom/mopub/common/util/Timer$State;

.field public static final enum STOPPED:Lcom/mopub/common/util/Timer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/mopub/common/util/Timer$State;

    const/4 v1, 0x0

    const-string v2, "STARTED"

    invoke-direct {v0, v2, v1}, Lcom/mopub/common/util/Timer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/util/Timer$State;->STARTED:Lcom/mopub/common/util/Timer$State;

    new-instance v0, Lcom/mopub/common/util/Timer$State;

    const/4 v2, 0x1

    const-string v3, "STOPPED"

    invoke-direct {v0, v3, v2}, Lcom/mopub/common/util/Timer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/util/Timer$State;->STOPPED:Lcom/mopub/common/util/Timer$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/util/Timer$State;

    sget-object v3, Lcom/mopub/common/util/Timer$State;->STARTED:Lcom/mopub/common/util/Timer$State;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mopub/common/util/Timer$State;->STOPPED:Lcom/mopub/common/util/Timer$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mopub/common/util/Timer$State;->$VALUES:[Lcom/mopub/common/util/Timer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/Timer$State;
    .locals 1

    .line 10
    const-class v0, Lcom/mopub/common/util/Timer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/Timer$State;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/Timer$State;
    .locals 1

    .line 10
    sget-object v0, Lcom/mopub/common/util/Timer$State;->$VALUES:[Lcom/mopub/common/util/Timer$State;

    invoke-virtual {v0}, [Lcom/mopub/common/util/Timer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/Timer$State;

    return-object v0
.end method
