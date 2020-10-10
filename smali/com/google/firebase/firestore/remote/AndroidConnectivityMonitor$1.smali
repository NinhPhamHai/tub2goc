.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->configureNetworkMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

.field final synthetic val$defaultNetworkCallback:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$defaultNetworkCallback:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$100(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$defaultNetworkCallback:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
