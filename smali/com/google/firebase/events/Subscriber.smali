.class public interface abstract Lcom/google/firebase/events/Subscriber;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# virtual methods
.method public abstract subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation
.end method
