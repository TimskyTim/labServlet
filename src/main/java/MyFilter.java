import javax.servlet.*;
import java.io.IOException;

public class MyFilter implements Filter {

        private FilterConfig filterConfig = null;

        public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
                throws IOException, ServletException {
            // сессия - ((HttpServletRequest) request).getSession()
            // приложение - filterConfig.getServletContext()
            // до передачи управления
            chain.doFilter(request, response);
            // после возврата управления
        }

        public FilterConfig getFilterConfig() {  return (this.filterConfig);  }
        public void destroy() {       }

        public void init(FilterConfig filterConfig) {
            this.filterConfig = filterConfig;
        }
    }



