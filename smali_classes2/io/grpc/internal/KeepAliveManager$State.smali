.class final enum Lio/grpc/internal/KeepAliveManager$State;
.super Ljava/lang/Enum;
.source "KeepAliveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/KeepAliveManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum IDLE:Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

.field public static final enum PING_SENT:Lio/grpc/internal/KeepAliveManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 102
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    .line 107
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v2, 0x1

    const-string v3, "PING_SCHEDULED"

    invoke-direct {v0, v3, v2}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    .line 111
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v3, 0x2

    const-string v4, "PING_DELAYED"

    invoke-direct {v0, v4, v3}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    .line 115
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v4, 0x3

    const-string v5, "PING_SENT"

    invoke-direct {v0, v5, v4}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    .line 119
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v5, 0x4

    const-string v6, "IDLE_AND_PING_SENT"

    invoke-direct {v0, v6, v5}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    .line 123
    new-instance v0, Lio/grpc/internal/KeepAliveManager$State;

    const/4 v6, 0x5

    const-string v7, "DISCONNECTED"

    invoke-direct {v0, v7, v6}, Lio/grpc/internal/KeepAliveManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    const/4 v0, 0x6

    .line 97
    new-array v0, v0, [Lio/grpc/internal/KeepAliveManager$State;

    sget-object v7, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v7, v0, v1

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    aput-object v1, v0, v6

    sput-object v0, Lio/grpc/internal/KeepAliveManager$State;->$VALUES:[Lio/grpc/internal/KeepAliveManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/KeepAliveManager$State;
    .locals 1

    .line 97
    const-class v0, Lio/grpc/internal/KeepAliveManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/KeepAliveManager$State;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/KeepAliveManager$State;
    .locals 1

    .line 97
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->$VALUES:[Lio/grpc/internal/KeepAliveManager$State;

    invoke-virtual {v0}, [Lio/grpc/internal/KeepAliveManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/KeepAliveManager$State;

    return-object v0
.end method
