.class public Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;


# instance fields
.field private final maxRetries:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;->maxRetries:I

    return-void
.end method
