.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field private isConnected:Z

.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "connectivity"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 130
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 131
    iget-boolean p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->isConnected:Z

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->isConnected:Z

    .line 133
    iget-boolean p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->isConnected:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 134
    iget-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$400(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 135
    :try_start_0
    iget-object p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {p2}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$400(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/util/Consumer;

    .line 136
    sget-object v1, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->REACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    :cond_1
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 139
    :cond_2
    iget-boolean p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->isConnected:Z

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 140
    iget-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$400(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 141
    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {p2}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$400(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/util/Consumer;

    .line 142
    sget-object v1, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->UNREACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    :cond_3
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_4
    :goto_3
    return-void
.end method
