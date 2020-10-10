.class public final enum Lio/grpc/okhttp/NegotiationType;
.super Ljava/lang/Enum;
.source "NegotiationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/NegotiationType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/NegotiationType;

.field public static final enum PLAINTEXT:Lio/grpc/okhttp/NegotiationType;

.field public static final enum TLS:Lio/grpc/okhttp/NegotiationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lio/grpc/okhttp/NegotiationType;

    const/4 v1, 0x0

    const-string v2, "TLS"

    invoke-direct {v0, v2, v1}, Lio/grpc/okhttp/NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/NegotiationType;->TLS:Lio/grpc/okhttp/NegotiationType;

    .line 37
    new-instance v0, Lio/grpc/okhttp/NegotiationType;

    const/4 v2, 0x1

    const-string v3, "PLAINTEXT"

    invoke-direct {v0, v3, v2}, Lio/grpc/okhttp/NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/NegotiationType;

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Lio/grpc/okhttp/NegotiationType;

    sget-object v3, Lio/grpc/okhttp/NegotiationType;->TLS:Lio/grpc/okhttp/NegotiationType;

    aput-object v3, v0, v1

    sget-object v1, Lio/grpc/okhttp/NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/NegotiationType;

    aput-object v1, v0, v2

    sput-object v0, Lio/grpc/okhttp/NegotiationType;->$VALUES:[Lio/grpc/okhttp/NegotiationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/NegotiationType;
    .locals 1

    .line 26
    const-class v0, Lio/grpc/okhttp/NegotiationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/NegotiationType;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/NegotiationType;
    .locals 1

    .line 26
    sget-object v0, Lio/grpc/okhttp/NegotiationType;->$VALUES:[Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {v0}, [Lio/grpc/okhttp/NegotiationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/NegotiationType;

    return-object v0
.end method
