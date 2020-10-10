.class Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/DocumentSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldValueOptions"
.end annotation


# instance fields
.field final serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field final timestampsInSnapshotsEnabled:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Z)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 89
    iput-boolean p2, p0, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;->timestampsInSnapshotsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;ZLcom/google/firebase/firestore/DocumentSnapshot$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;-><init>(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Z)V

    return-void
.end method
