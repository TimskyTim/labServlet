package Message;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

//import static java.util.stream.Nodes.collect;

public class MessageService {
    private final ArrayList<Message> messages;

    public MessageService() {
        messages=new ArrayList<>(100);
        addMessage("admin", "Добро пожаловать!");
        addMessage("guest1", "Hello!");
        addMessage("guest2", "Hello!");
    }

    public final void addMessage(String user,String text) {
        messages.add(new Message(user,text));
    }

    public final void addMessage(String user,String from,String text) {
        messages.add(new Message(user,from,text));
    }

    public List<Message> getAllMessages() {
        return Collections.unmodifiableList(messages);
        // вызвавшие не смогут удалить или добавить сообщения
        // теоретически, получив сслыку на список, можно изменять содержимое его элементов
        // но наши сообщения неизменямы (Immutable)
    }
    
    public List<Message> getGlobalMessages() {
//       выбрать тех, у кого адресат=null
        return messages
                .stream()
                .filter(message -> message.getRecipient()==null)
                .collect(Collectors.toList());
    }

    public List<Message> getMessagesTo(String user) {
        return messages
                .stream()
                .filter(message -> Objects.equals(message.getRecipient(),user))
                .collect(Collectors.toList());
    }
}
