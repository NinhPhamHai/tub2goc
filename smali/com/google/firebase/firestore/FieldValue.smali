.class public abstract Lcom/google/firebase/firestore/FieldValue;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;,
        Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;,
        Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;,
        Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;,
        Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;
    }
.end annotation


# static fields
.field private static final DELETE_INSTANCE:Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

.field private static final SERVER_TIMESTAMP_INSTANCE:Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/FieldValue;->DELETE_INSTANCE:Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

    .line 106
    new-instance v0, Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/FieldValue;->SERVER_TIMESTAMP_INSTANCE:Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serverTimestamp()Lcom/google/firebase/firestore/FieldValue;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/firebase/firestore/FieldValue;->SERVER_TIMESTAMP_INSTANCE:Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;

    return-object v0
.end method


# virtual methods
.method abstract getMethodName()Ljava/lang/String;
.end method
