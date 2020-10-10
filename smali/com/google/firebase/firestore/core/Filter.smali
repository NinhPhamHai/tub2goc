.class public abstract Lcom/google/firebase/firestore/core/Filter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/Filter$Operator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCanonicalId()Ljava/lang/String;
.end method

.method public abstract matches(Lcom/google/firebase/firestore/model/Document;)Z
.end method
