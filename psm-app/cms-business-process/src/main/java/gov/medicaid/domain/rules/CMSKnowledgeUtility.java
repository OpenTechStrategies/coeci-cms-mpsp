/*
 * Copyright 2012-2013 TopCoder, Inc.
 *
 * This code was developed under U.S. government contract NNH10CD71C.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *     http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package gov.medicaid.domain.rules;

import org.drools.runtime.StatefulKnowledgeSession;

import javax.persistence.EntityManagerFactory;
import javax.transaction.UserTransaction;

/**
 * This class provides a facade for DroolsKnowledgeDelegate
 *
 * v1.1 - WAS Porting - pass reference to user transaction when invoking BPMN
 *
 * @author TCSASSEMBLER
 * @version 1.1
 */
public class CMSKnowledgeUtility {

    /**
     * Knowledge implementation.
     */
    private static DroolsKnowledgeDelegate knowledge = new DroolsKnowledgeDelegate();

    /**
     * Private constructor.
     */
    private CMSKnowledgeUtility() {
    }

    /**
     * Creates a new business process session for CMS workflow.
     *
     * @param entityManager the EntityManagerFactory
     * @param utx           the transaction to use
     * @return StatefulKnowledgeSession the workflow session created
     */
    public static StatefulKnowledgeSession newWorkflowSession(
        EntityManagerFactory entityManager,
        UserTransaction utx
    ) {
        return knowledge.newWorkflowSession(entityManager, utx);
    }

    /**
     * @return StatefulKnowledgeSession a new screening validation session
     */
    public static StatefulKnowledgeSession newScreeningValidationSession() {
        return knowledge.newScreeningValidationSession();
    }

    /**
     * @return StatefulKnowledgeSession a session for frontend validation
     */
    public static StatefulKnowledgeSession newValidationSession() {
        return knowledge.newValidationSession();
    }

    /**
     * @param sessionId id of the session to reload
     * @param factory   the EntityManagerFactory
     * @param utx       the transaction to use
     * @return StatefulKnowledgeSession the reloaded workflow session
     */
    public static StatefulKnowledgeSession reloadWorkflowSession(
        int sessionId,
        EntityManagerFactory factory,
        UserTransaction utx
    ) {
        return knowledge.reloadWorkflowSession(sessionId, factory, utx);
    }
}
