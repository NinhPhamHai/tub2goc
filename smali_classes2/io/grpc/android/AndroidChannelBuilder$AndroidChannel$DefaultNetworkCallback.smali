.class Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field private isConnected:Z

.field final synthetic this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;


# direct methods
.method private constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;Lio/grpc/android/AndroidChannelBuilder$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;-><init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 328
    iget-boolean p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->isConnected:Z

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {p1}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$400(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Lio/grpc/ManagedChannel;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/ManagedChannel;->enterIdle()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {p1}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$400(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Lio/grpc/ManagedChannel;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/ManagedChannel;->resetConnectBackoff()V

    :goto_0
    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->isConnected:Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    .line 338
    iput-boolean p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->isConnected:Z

    return-void
.end method
