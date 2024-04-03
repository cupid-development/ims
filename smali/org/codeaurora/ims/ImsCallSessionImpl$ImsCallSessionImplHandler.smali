.class Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1042
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1043
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1052
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1215
    :pswitch_1
    goto/16 :goto_2

    .line 1281
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mmaybeNotifyConferenceState(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 1282
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mmaybeNotifyPendingCallEndReason(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto/16 :goto_2

    .line 1277
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1278
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mhandleSipDtmfReceived(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 1279
    goto/16 :goto_2

    .line 1275
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    goto/16 :goto_2

    .line 1175
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1176
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1179
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1178
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1181
    :cond_1
    const-string v1, "Transfer success"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTransferred()V

    .line 1184
    goto/16 :goto_2

    .line 1261
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1262
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-nez v0, :cond_2

    .line 1263
    const-string v1, "Send dtmf: Result is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    goto/16 :goto_2

    .line 1267
    :cond_2
    :try_start_0
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1268
    .local v1, "result":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    .end local v1    # "result":Landroid/os/Message;
    goto/16 :goto_2

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to send result"

    invoke-static {p0, v2, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1272
    .end local v1    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 1248
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1249
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-nez v0, :cond_3

    .line 1250
    const-string v1, "Voice info: Result is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1251
    goto/16 :goto_2

    .line 1254
    :cond_3
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice info: Message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1257
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyVoiceInfoChanged(I)V

    .line 1259
    goto/16 :goto_2

    .line 1093
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1094
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mprocessAddParticipantsList(Lorg/codeaurora/ims/ImsCallSessionImpl;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1167
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1168
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 1169
    const-string v1, "Deflect error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1171
    :cond_5
    const-string v1, "Deflect success"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    goto/16 :goto_2

    .line 1240
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1241
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT:  upgarde response exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1244
    :cond_6
    const-string v1, "RTT: EVENT_RTT_UPGRADE_CONFIRM_DONE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    goto/16 :goto_2

    .line 1236
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1237
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 1238
    goto/16 :goto_2

    .line 1228
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1229
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: Send message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1232
    :cond_7
    const-string v1, "RTT: EVENT_SEND_RTT_MESSAGE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    goto/16 :goto_2

    .line 1220
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1221
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_8

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: Message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1224
    :cond_8
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyReceivedRttMessage(Ljava/lang/Object;)V

    .line 1226
    goto/16 :goto_2

    .line 1217
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_e
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mdoClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 1218
    goto/16 :goto_2

    .line 1200
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1201
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove participant error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(\\d+)"

    const-string v4, "0$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fputmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1f5

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v1

    .line 1208
    const/16 v9, 0x18

    invoke-virtual {v1, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1206
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 1210
    :cond_9
    const-string v1, "Remove participant success"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    goto/16 :goto_2

    .line 1186
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1187
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_14

    .line 1188
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fputmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmDc(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmDc(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_14

    .line 1191
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallProfile(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMediaProfileAudioDirection(Landroid/telephony/ims/ImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    .line 1193
    .local v1, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1194
    .end local v1    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_2

    .line 1098
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1099
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_a

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    .line 1100
    const-string v2, "Add Participant error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 1103
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1104
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1103
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1107
    :cond_a
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestDelivered()V

    .line 1109
    :cond_b
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mprocessAddParticipantResponse(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 1110
    goto/16 :goto_2

    .line 1159
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1160
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_d

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1163
    :cond_d
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x8f

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fputmDisconnCause(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 1165
    goto/16 :goto_2

    .line 1145
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1146
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_14

    .line 1147
    const-string v1, "Resume error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 1149
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1148
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mmaybeDisplaySuppServiceErrorMsg(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1152
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 1153
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1154
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1153
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1129
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1130
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_14

    .line 1131
    const-string v1, "Hold error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 1133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1132
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mmaybeDisplaySuppServiceErrorMsg(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1138
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 1139
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1140
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1139
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1118
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1119
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hangup error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    :cond_e
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v3, 0x1f5

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fputmDisconnCause(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 1125
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 1127
    goto/16 :goto_2

    .line 1112
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1113
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_14

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1054
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1055
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_14

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_14

    .line 1056
    const-string v2, "Dial error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 1059
    const/4 v2, 0x0

    .line 1060
    .local v2, "errorCode":I
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lorg/codeaurora/ims/QtiImsException;

    if-eqz v3, :cond_f

    .line 1061
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/QtiImsException;

    invoke-virtual {v3}, Lorg/codeaurora/ims/QtiImsException;->getCode()I

    move-result v2

    goto :goto_1

    .line 1062
    :cond_f
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v3, :cond_10

    .line 1063
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1064
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v2

    .line 1068
    :cond_10
    :goto_1
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v3, :cond_11

    .line 1069
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v2

    .line 1073
    :cond_11
    const/16 v3, 0x70

    if-eq v2, v3, :cond_12

    const/16 v3, 0x96

    if-ne v2, v3, :cond_13

    .line 1076
    :cond_12
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$fgetmCallProfile(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const-string v4, "CallFailExtraCode"

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1078
    const/4 v2, 0x0

    .line 1080
    :cond_13
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v4, 0x8

    iput v4, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DIAL errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const-string v5, "Dial Failed"

    invoke-direct {v4, v2, v1, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1089
    .end local v2    # "errorCode":I
    nop

    .line 1285
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_14
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
