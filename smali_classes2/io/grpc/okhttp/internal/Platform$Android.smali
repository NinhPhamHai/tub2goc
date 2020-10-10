.class Lio/grpc/okhttp/internal/Platform$Android;
.super Lio/grpc/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android"
.end annotation


# instance fields
.field private final getAlpnSelectedProtocol:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsExtensionType:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

.field private final trafficStatsTagSocket:Ljava/lang/reflect/Method;

.field private final trafficStatsUntagSocket:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/security/Provider;Lio/grpc/okhttp/internal/Platform$TlsExtensionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/security/Provider;",
            "Lio/grpc/okhttp/internal/Platform$TlsExtensionType;",
            ")V"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p7}, Lio/grpc/okhttp/internal/Platform;-><init>(Ljava/security/Provider;)V

    .line 359
    iput-object p1, p0, Lio/grpc/okhttp/internal/Platform$Android;->setUseSessionTickets:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 360
    iput-object p2, p0, Lio/grpc/okhttp/internal/Platform$Android;->setHostname:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 361
    iput-object p3, p0, Lio/grpc/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    .line 362
    iput-object p4, p0, Lio/grpc/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    .line 363
    iput-object p5, p0, Lio/grpc/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 364
    iput-object p6, p0, Lio/grpc/okhttp/internal/Platform$Android;->setAlpnProtocols:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 365
    iput-object p8, p0, Lio/grpc/okhttp/internal/Platform$Android;->tlsExtensionType:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 390
    iget-object v2, p0, Lio/grpc/okhttp/internal/Platform$Android;->setUseSessionTickets:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lio/grpc/okhttp/internal/Platform$Android;->setHostname:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    iget-object p2, p0, Lio/grpc/okhttp/internal/Platform$Android;->setAlpnProtocols:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {p2, p1}, Lio/grpc/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 396
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lio/grpc/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 397
    iget-object p3, p0, Lio/grpc/okhttp/internal/Platform$Android;->setAlpnProtocols:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {p3, p1, p2}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 402
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 404
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lio/grpc/okhttp/internal/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    .line 405
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lio/grpc/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_1
    return-object v1
.end method

.method public getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;
    .locals 1

    .line 370
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform$Android;->tlsExtensionType:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    return-object v0
.end method
